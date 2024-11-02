.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract getButtonDistanceSize(Landroid/graphics/Point;Z)I
.end method

.method public abstract getButtonWidth(Landroid/graphics/Point;Z)I
.end method

.method public abstract getGesturalLayout(ZZ)Ljava/lang/String;
.end method

.method public abstract getGestureWidth(Landroid/graphics/Point;Z)I
.end method

.method public abstract getLayout(Z)Ljava/lang/String;
.end method

.method public abstract getLayout(ZI)Ljava/lang/String;
.end method

.method public abstract getSpaceSidePadding(Landroid/graphics/Point;Z)I
.end method

.method public getSpaceSidePadding(Landroid/graphics/Point;ZZ)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getSpaceWidth(Landroid/graphics/Point;ZZ)I
.end method

.method public abstract getVerticalLayoutID(Z)I
.end method

.method public onSettingChanged(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
