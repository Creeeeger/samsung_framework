.class public abstract Landroidx/picker/features/composable/custom/CustomViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract bindData(Landroidx/picker/model/AppInfoData;)V
.end method

.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-virtual {p0, p1}, Landroidx/picker/features/composable/custom/CustomViewHolder;->bindData(Landroidx/picker/model/AppInfoData;)V

    :cond_0
    return-void
.end method
