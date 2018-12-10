﻿<%@ Page Title="Hợp đồng thuê xe" Language="C#" MasterPageFile="~/AdminSite/AdminSite.Master" AutoEventWireup="true" CodeBehind="Hopdong.aspx.cs" Inherits="QuanLiThueXe.AdminSite.Hopdong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
          <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
    <script src="https://cdn.ckeditor.com/4.10.1/standard/ckeditor.js"></script>
      <script type="text/javascript">
      $(function () {
            $('#ContentPlaceHolder1_GridView1').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
      }
      );
    </script>
   
    </asp:content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                         <div class="row">
                            <div class="col-sm-12 col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                       
                                    </div>
                                    <div class="card-body card-block">
                                        <div class="row form-group">
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Chọn Xe:</label>
                                                    <asp:DropDownList ID="DropXe" CssClass="form-control" runat="server" DataSourceID="LinqDataSource1" DataTextField="BangSo" DataValueField="MaXE"></asp:DropDownList>
                                                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="QuanLiThueXe.HideClassDataContext" EntityTypeName="" TableName="CHITIETXEs">
                                                    </asp:LinqDataSource>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Nhân viên lập hợp đồng:</label>
                                                    <asp:DropDownList ID="Dropnhanvien" CssClass="form-control" runat="server" DataSourceID="LinqDataSource2" DataTextField="HoTen" DataValueField="MaNV"></asp:DropDownList>
                                                    <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="QuanLiThueXe.HideClassDataContext" EntityTypeName="" TableName="NHANVIENs">
                                                    </asp:LinqDataSource>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Chọn khách hàng:</label>
                                                    <asp:DropDownList ID="dropkhachhang" CssClass="form-control" runat="server" DataSourceID="LinqDataSource3" DataTextField="HoTen" DataValueField="MaKH"></asp:DropDownList>
                                                    <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="QuanLiThueXe.HideClassDataContext" EntityTypeName="" TableName="KHACHHANGs">
                                                    </asp:LinqDataSource>
                                                </div>
                                            </div>
                                        </div>


                                        
                                    </div>
                                    
                                </div>
                            </div>
                          <%--  <div class="col-sm-12 col-lg-4">
                                <div class="card">
                                    <div class="card-header">
                                        
                                    </div>
                                    <div class="card-body card-block">
                                        <div class="row form-group">
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Giá thuê: </label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fas fa-money-bill"></i>
                                                        </div>
                                                        <asp:TextBox ID="txtgiathue" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                                        <div class="input-group-addon">.00</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Mức giảm giá:</label>
                                                    <div class="input-group">
                                                        
                                                        <asp:TextBox ID="txtmucgiamgia" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                                        <div class="input-group-addon">%</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                            <div class="col-sm-12 col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                      
                                    </div>
                                    <div class="card-body card-block">
                                        <div class="row form-group">
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Ngày thuê:</label>
                                                        <asp:TextBox ID="txtngaythue" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Ngày trả:</label>
                                                    <asp:TextBox ID="txtngaytra" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                       
                                        <asp:Button ID="btnnhap" runat="server" Text="Nhập" CssClass="btn btn-primary btn-sm" OnClick="btnnhap_Click" />
                                        
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive table--no-card m-b-30">
                                    <asp:GridView DataKeyNames="SoDDT" CssClass="table table-borderless table-striped table-earning" ID="GridView1" runat="server" >
                                       
                                    </asp:GridView>
                                   
                                </div>
                            </div>
                        </div>
                                
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Thuê xe VIVU</p>
                                </div>
                            </div>
                        </div>
                 
                    </div>
                </div>
            </div>
</asp:Content>