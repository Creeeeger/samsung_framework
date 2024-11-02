.class public final Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;


# direct methods
.method private constructor <init>(Lcom/google/android/material/navigation/NavigationBarPresenter;Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->mPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/navigation/NavigationBarPresenter;Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;Lcom/google/android/material/navigation/NavigationBarPresenter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;-><init>(Lcom/google/android/material/navigation/NavigationBarPresenter;Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->mPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow$1()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->mPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    .line 37
    .line 38
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    .line 39
    .line 40
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPostedOpenRunnable:Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

    .line 44
    .line 45
    return-void
.end method
