<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/inc/taglib.jsp" %>
<div class="container-fluid" ng-controller="editCtrl">
    <div class="page-header">
        <ol class="breadcrumb">
            <li><a href="javascript:;"><i class="icon-tasks"></i> <%--消息设置--%><eidea:label key="report.title"/></a></li>
        </ol>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <br>
            <form role="form" name="editForm" novalidate  ng-submit="save()">
                <div class="form-group">
                    <label for="key"><%--键值--%><eidea:label key="label.keyvalue"/></label>
                    <input type="text" class="form-control" id="key" ng-model="reportBo.key" placeholder="<eidea:message key="label.input.keyvalue"/>" required ng-minlength="2" ng-maxlength="100" ng-disabled="!reportBo.created">
                </div>
                <div class="form-group">
                    <label for="value"><%--信息--%><eidea:label key="label.message"/></label>
                    <input type="text" class="form-control" id="value" placeholder="<eidea:message key="label.input.message"/>" ng-model="reportBo.value" required ng-minlength="2" ng-maxlength="500">
                </div>
                <div class="form-group">
                    <p class="text-right">
                        <button type="reset" ng-click="create()"  class="btn btn-default btn-sm" ng-show="canAdd"><eidea:label key="common.button.create"/><%--新建--%></button>
                        <button type="submit" class="btn btn-default btn-sm" ng-show="canSave"><eidea:label key="common.button.save"/><%--保存--%></button>
                        <a href="#/list" class="btn btn-default btn-sm"><eidea:label key="common.button.back"/><%--返回--%></a>
                    </p>
                </div>
                <div class="form-group">
                    <p class="text-center" style="color: red">
                        {{message}}
                    </p>
                </div>
            </form>
        </div>
    </div>
</div>