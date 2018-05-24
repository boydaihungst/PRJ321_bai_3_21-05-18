<%-- 
    Document   : Line
    Created on : May 23, 2018, 3:32:44 PM
    Author     : DrAgOn
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Line"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Draw Line</title>
        <%
            ArrayList<Line> lines = (ArrayList<Line>) request.getAttribute("lines");
        %>
    </head>
    <body>
        <canvas id="canvas" width="1000px" height="1000px">
        <script>

            function Line(x1, y1, x2, y2)
            {
                this.x1 = x1;
                this.y1 = y1;
                this.x2 = x2;
                this.y2 = y2;

                this.draw = function (ctx)
                {
                    ctx.beginPath();
                    ctx.moveTo(this.x1, this.y1);
                    ctx.lineTo(this.x2, this.y2);
                    ctx.stroke();
                }
            }
            var lines = [];
            function loadData()
            {
            <%
                    for (Line l : lines) {

            %>
                lines.push(new Line(<%=l.getVertexA()[0]%>,<%=l.getVertexA()[1]%>,<%=l.getVertexB()[0]%>,<%=l.getVertexB()[1]%>));
            <%  }%>
                var canvas = document.getElementById("canvas");
                var ctx = canvas.getContext("2d");
                for (var i = 0; i < lines.length; i++)
                    lines[i].draw(ctx);
            }
            loadData();
        </script>
    </body>
</html>
