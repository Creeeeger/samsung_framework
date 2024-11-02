.class public final Landroidx/picker/repository/ViewDataRepository$createAppInfoViewData$1;
.super Landroidx/picker/features/observable/UpdateMutableState;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroidx/picker/model/AppInfoData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/observable/UpdateMutableState;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/picker/model/AppInfoData;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/picker/model/AppInfoData;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroidx/picker/model/AppInfoData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
