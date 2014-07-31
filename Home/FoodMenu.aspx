<%@ Page Title="" Language="C#" MasterPageFile="~/Home/MasterPage.master" AutoEventWireup="true" CodeFile="FoodMenu.aspx.cs" Inherits="Home_FoodMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="row">
        <div id="primary" class="col">
            <div class="primary-content">
                <div class="recipe clearfix">
                    <h2 class="entry-title">Moldavian Sausage With Cabbage, Tomato and Onions
              </h2>
                    <div class="reset-padding">
                        <div class="slider-warp">
                            <div id="slider" class="flexslider">
                                <ul class="slides">
                                    <li>
                                        <img src="images/sausage-cabbage-and-tomato-1.jpg" alt />
                                        <div class="flex-caption">
                                            <h3>STEP 1: Lorem ipsum dolor sit amet
                          </h3>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="images/sausage-cabbage-and-tomato-2.jpg" alt />
                                        <div class="flex-caption">
                                            <h3>STEP 2: Etiam tempus urna tortor
                          </h3>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="images/sausage-cabbage-and-tomato-3.jpg" alt />
                                        <div class="flex-caption">
                                            <h3>STEP 3: Aliquam egestas
                          </h3>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="images/sausage-cabbage-and-tomato-4.jpg" alt />
                                        <div class="flex-caption">
                                            <h3>STEP 4: Suspendisse auctor auctor nunc dictum
                          </h3>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="images/sausage-cabbage-and-tomato-5.jpg" alt />
                                        <div class="flex-caption">
                                            <h3>STEP 5: Sed lobortis leo nulla
                          </h3>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="carousel-warp">
                                <div id="carousel" class="flexslider">
                                    <ul class="slides">
                                        <li>
                                            <img src="images/sausage-cabbage-and-tomato-1.jpg" alt />
                                        </li>
                                        <li>
                                            <img src="images/sausage-cabbage-and-tomato-2.jpg" alt />
                                        </li>
                                        <li>
                                            <img src="images/sausage-cabbage-and-tomato-3.jpg" alt />
                                        </li>
                                        <li>
                                            <img src="images/sausage-cabbage-and-tomato-4.jpg" alt />
                                        </li>
                                        <li>
                                            <img src="images/sausage-cabbage-and-tomato-5.jpg" alt />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="recipe-meta clearfix">
                            <ul>
                                <li>
                                    <h5>
                                        <i class="info-icon icon-clock"></i>
                                        Half an Hour
                      </h5>
                                </li>
                                <li>
                                    <h5>
                                        <i class="info-icon icon-user"></i>
                                        For four
                      </h5>
                                </li>
                                <li>
                                    <h5>
                                        <i class="info-icon icon-beaker"></i>
                                        Level: Medium
                      </h5>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <h3 class="ingredients-title">Food Menu:
              </h3>
                    <asp:Repeater ID="repeat1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="ingredients">
                                <dl>
                                    <div><img src="<%# Eval("imgpath") %>" id="fimg" /></div>
                                    <dt>Id:
                                        <asp:Label ID="FoodIdLabel" runat="server" Text='<%# Eval("FoodId") %>' />
                                    </dt>
                                    <dd></dd>

                                    <dd></dd>
                                    <dt>Food Name:
                                        <asp:Label ID="FoodNameLabel" runat="server" Text='<%# Bind("FoodName") %>' />
                                    </dt>
                                    <dd></dd>
                                    <dt>Price:<asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                                    </dt>
                                    <dd></dd>
                                    <dt>Category:<asp:Label ID="categoryLabel" runat="server" Text='<%# Bind("category") %>' />
                                    </dt>

                                    <dd></dd>
                                    
                                    
                                </dl>
                                
                            </div>
                            <br />
                            <%-- FoodId:
                            
                            <br />
                            FoodName:
                           
                            <br />
                            ResId:
                            <asp:Label ID="ResIdLabel" runat="server" Text='<%# Bind("ResId") %>' />
                            <br />
                            ResName:
                            <asp:Label ID="ResNameLabel" runat="server" Text='<%# Bind("ResName") %>' />
                            <br />
                            Price:
                            
                            <br />
                            Description:
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                            <br />
                            category:
                           
                            <br />
                            imgpath:
                            <asp:Label ID="imgpathLabel" runat="server" Text='<%# Bind("imgpath") %>' />
                            <br />--%>
                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT * FROM [FoodTable] WHERE (([ResId] = @ResId))">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ResId" QueryStringField="resid" Type="Int32" />
                            <asp:QueryStringParameter Name="ResName" QueryStringField="id" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>
            </div>
        </div>
    </div>

</asp:Content>

