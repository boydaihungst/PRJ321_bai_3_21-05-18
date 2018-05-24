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
                    this.Intersection = function (Line, ctx) {
                        var x = ((this.x1 * this.y2 - this.y1 * this.x2) * (Line.x1 - Line.x2) - (this.x1 - this.x2) * (Line.x1 * Line.y2 - Line.y1 * Line.x2)) / ((this.x1 - this.x2) * (Line.y1 - Line.y2) - (this.y1 - this.y2) * (Line.x1 - Line.x2));
                        var y = ((this.x1 * this.y2 - this.y1 * this.x2) * (Line.y1 - Line.y2) - (this.y1 - this.y2) * (Line.x1 * Line.y2 - Line.y1 * Line.x2)) / ((this.x1 - this.x2) * (Line.y1 - Line.y2) - (this.y1 - this.y2) * (Line.x1 - Line.x2));
                        if (isNaN(x) || isNaN(y)) {
                            return false;
                        } else {
                            if (this.x1 >= this.x2) {
                                if (!(this.x2 <= x && x <= this.x1)) {
                                    return false;
                                }
                            } else {
                                if (!(this.x1 <= x && x <= this.x2)) {
                                    return false;
                                }
                            }
                            if (this.y1 >= this.y2) {
                                if (!(this.y2 <= y && y <= this.y1)) {
                                    return false;
                                }
                            } else {
                                if (!(this.y1 <= y && y <= this.y2)) {
                                    return false;
                                }
                            }
                            if (Line.x1 >= Line.x2) {
                                if (!(Line.x2 <= x && x <= Line.x1)) {
                                    return false;
                                }
                            } else {
                                if (!(Line.x1 <= x && x <= Line.x2)) {
                                    return false;
                                }
                            }
                            if (Line.y1 >= Line.y2) {
                                if (!(Line.y2 <= y && y <= Line.y1)) {
                                    return false;
                                }
                            } else {
                                if (!(Line.y1 <= y && y <= Line.y2)) {
                                    return false;
                                }
                            }
                        }
                        ctx.beginPath();
                        ctx.fillStyle = "red";
                        ctx.fillRect(x, y, 2, 2);
                        ctx.stroke();
                        return true;
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
                    for (var i = 0; i < lines.length; i++) {
                        lines[i].draw(ctx);
                        for (var j = 0; j < i; j++) {
                            lines[i].Intersection(lines[j], ctx);
                        }
                    }
                }
                loadData();
            </script>
    </body>
</html>
