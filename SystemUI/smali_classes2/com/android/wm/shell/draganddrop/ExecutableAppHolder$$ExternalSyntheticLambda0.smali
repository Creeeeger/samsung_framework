.class public final synthetic Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 2
    .line 3
    check-cast p1, Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 6
    .line 7
    check-cast p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    iget-boolean v0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    .line 34
    .line 35
    if-eq v0, p0, :cond_2

    .line 36
    .line 37
    iput-boolean p0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    .line 38
    .line 39
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->notifyDragSplitAppIconHasDrawable(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method
