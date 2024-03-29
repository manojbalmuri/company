class ClassifiedsController < ApplicationController
  # GET /clssifieds
  # GET /classifieds.xml
  def index
    @classifieds = Classified.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @classifieds }
    end
 end

  # GET /classifieds/1
  # GET /classifieds/1.xml
  def show
    @classified = Classified.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @classified }
    end
  end
  
  # GET /classifieds/new
  # GET /classifieds/new.xml
  def new
    @classified = Classified.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @classified }
    end
  end
  
   # GET /classifieds/1/edit
  def edit
    @classified = Classified.find(params[:id])
  end
  
  
  # POST /classifieds
  # POST /classifieds.xml
  def create
    @classified = Classified.new(params[:classified])

    respond_to do |format|
      if @classified.save
        format.html { redirect_to(@classified, :notice => 'Classified was successfully created.') }
        format.xml  { render :xml => @classified, :status => :created, :location => @classified }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @classified.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /classifieds/1
  # PUT /classifieds/1.xml
  def update
    @classified = Classified.find(params[:id])

    respond_to do |format|
      if @classified.update_attributes(params[:classified])
        format.html { redirect_to(@classified, :notice => 'Classified was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @classified.errors, :status => :unprocessable_entity }
      end
    end
  end
  
   # DELETE /classifieds/1
   # DELETE /classifieds/1.xml
  def destroy
    @classified = Classified.find(params[:id])
    @classified.destroy

    respond_to do |format|
      format.html { redirect_to(classifieds_url) }
      format.xml  { head :ok }
    end
  end
end
