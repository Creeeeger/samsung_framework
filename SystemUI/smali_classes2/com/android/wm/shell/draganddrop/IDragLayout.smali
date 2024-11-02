.class public interface abstract Lcom/android/wm/shell/draganddrop/IDragLayout;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    check-cast p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 3
    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Ljava/lang/Runnable;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
