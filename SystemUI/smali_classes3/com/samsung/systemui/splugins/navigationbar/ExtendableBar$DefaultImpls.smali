.class public final Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar$DefaultImpls;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static isCoverDisplayNavBarEnabled(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public static isCoverLargeScreenTaskEnabled(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public static isTaskbarEnabled(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public static notifyForceImmersiveStateChanged(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static updateActiveIndicatorSpringParams(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public static updateBackPanelColor(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;IIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic updateBackPanelColor$default(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;IIIIILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p6, :cond_4

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    move p1, v0

    .line 9
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 10
    .line 11
    if-eqz p6, :cond_1

    .line 12
    .line 13
    move p2, v0

    .line 14
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 15
    .line 16
    if-eqz p6, :cond_2

    .line 17
    .line 18
    move p3, v0

    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    move p4, v0

    .line 24
    :cond_3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;->updateBackPanelColor(IIII)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 29
    .line 30
    const-string p1, "Super calls with default arguments not supported in this target, function: updateBackPanelColor"

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static updateIconsAndHints(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;Z)V
    .locals 0

    .line 1
    return-void
.end method
