
public class tree {
	protected int treeId;
	protected int quoteId;
	protected Double size;
	protected Double height;
	protected Double distance;
	
	
	//constructors
    public tree() {
    }
 
    public tree(int treeId) 
    {
        this.treeId = treeId;
    }
    
    public tree(int treeId, int quoteId, Double size, Double height, Double distance)
    {
    	this(quoteId, size, height, distance);
    	this.quoteId = quoteId;
    }
 

    public tree(int quoteId, Double size, Double height, Double distance)
    {
    	this.quoteId = quoteId;
    	this.size = size;
    	this.height = height;
    	this.distance = distance;
    }
    
    //getter and setter methods
    public int getTreeId() {
    	return this.treeId;
    }
    public void setTreeId(int treeId) {
    	this.treeId = treeId;
    }

    public int getQuoteId() {
    	return this.quoteId;
    }
    public void setQuoteId(int quoteId) {
    	this.quoteId = quoteId;
    }

    
    public Double getSize() {
    	return this.size;
    }
    public void setSize(Double size) {
    	this.size = size;
    }
    
    public Double getHeight() {
    	return this.height;
    }
    public void setHeight(Double height) {
    	this.height = height;
    }
    
    public Double getDistance() {
    	return this.distance;
    }
    public void setDistance(Double distance) {
    	this.distance = distance;
    }
    
  }
