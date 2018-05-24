
package model;

/**
 *
 * @author DrAgOn
 */
public class Line {
    private int[] vertexA;
    private int[] vertexB;

    public Line(int[] vertexA, int[] vertexB) {
        this.vertexA = vertexA;
        this.vertexB = vertexB;
    }

    public int[] getVertexA() {
        return vertexA;
    }

    public void setVertexA(int[] vertexA) {
        this.vertexA = vertexA;
    }

    public int[] getVertexB() {
        return vertexB;
    }

    public void setVertexB(int[] vertexB) {
        this.vertexB = vertexB;
    }

    
}
