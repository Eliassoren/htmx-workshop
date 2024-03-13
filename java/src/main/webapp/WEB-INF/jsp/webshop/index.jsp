<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<t:layout>
    <div id="page-layout">
        <div id="banner" hx-get="/webshop/shipping-info" hx-trigger="cart-updated from:body" hx-swap="innerHTML">
            <!-- place the shipping info banner here -->
        </div>

        <div id="search" class="mb-2">
            <label>
                Search:
                <input type="search" class="form-control form-control-sm"
                       name="q" hx-get="/webshop/search" hx-trigger="keyup search changed" hx-target="#products">
            </label>
        </div>

        <div id="products">
            <%@ include file="products.jsp" %>
        </div>
        <div id="cart">
            <div id="cart-container" hx-get="/webshop/cart" hx-trigger="cart-updated from:body" hx-swap="innerHTML">
                <%@ include file="cart.jsp" %>
            </div>
        </div>
    </div>
</t:layout>
