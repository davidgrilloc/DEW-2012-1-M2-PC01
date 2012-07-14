class ClienteProductosController < ApplicationController
  # GET /cliente_productos
  # GET /cliente_productos.json
  def index
    @cliente_productos = ClienteProducto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cliente_productos }
    end
  end

  # GET /cliente_productos/1
  # GET /cliente_productos/1.json
  def show
    @cliente_producto = ClienteProducto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cliente_producto }
    end
  end

  # GET /cliente_productos/new
  # GET /cliente_productos/new.json
  def new
    @cliente_producto = ClienteProducto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cliente_producto }
    end
  end

  # GET /cliente_productos/1/edit
  def edit
    @cliente_producto = ClienteProducto.find(params[:id])
  end

  # POST /cliente_productos
  # POST /cliente_productos.json
  def create
    @cliente_producto = ClienteProducto.new(params[:cliente_producto])

    respond_to do |format|
      if @cliente_producto.save
        format.html { redirect_to @cliente_producto, notice: 'Cliente producto was successfully created.' }
        format.json { render json: @cliente_producto, status: :created, location: @cliente_producto }
      else
        format.html { render action: "new" }
        format.json { render json: @cliente_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cliente_productos/1
  # PUT /cliente_productos/1.json
  def update
    @cliente_producto = ClienteProducto.find(params[:id])

    respond_to do |format|
      if @cliente_producto.update_attributes(params[:cliente_producto])
        format.html { redirect_to @cliente_producto, notice: 'Cliente producto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cliente_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_productos/1
  # DELETE /cliente_productos/1.json
  def destroy
    @cliente_producto = ClienteProducto.find(params[:id])
    @cliente_producto.destroy

    respond_to do |format|
      format.html { redirect_to cliente_productos_url }
      format.json { head :no_content }
    end
  end
end
