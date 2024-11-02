.class public interface abstract Lcom/android/wm/shell/pip/PipMenuController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static getPipMenuLayoutParams(Landroid/content/Context;IILjava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/16 v3, 0x7f6

    .line 4
    .line 5
    const v4, 0x20840010

    .line 6
    .line 7
    .line 8
    const/4 v5, -0x3

    .line 9
    move-object v0, v6

    .line 10
    move v1, p1

    .line 11
    move v2, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 13
    .line 14
    .line 15
    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 16
    .line 17
    const/high16 p2, 0x20000000

    .line 18
    .line 19
    or-int/2addr p1, p2

    .line 20
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 21
    .line 22
    invoke-virtual {v6, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const p1, 0x7f130ca1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 37
    .line 38
    return-object v6
.end method


# virtual methods
.method public abstract attach(Landroid/view/SurfaceControl;)V
.end method

.method public abstract detach()V
.end method

.method public dismissPip()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract isMenuVisible()Z
.end method

.method public abstract movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V
.end method

.method public onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public setSplitMenuEnabled(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract updateMenuBounds(Landroid/graphics/Rect;)V
.end method
