.class public final Lcom/android/systemui/popup/PopupUI;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final mPopupUIReceiver:Lcom/android/systemui/popup/PopupUI$1;

.field public final mViewModelList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/popup/PopupUI$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/popup/PopupUI$1;-><init>(Lcom/android/systemui/popup/PopupUI;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Lcom/android/systemui/popup/PopupUI$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/popup/PopupUI;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onUiModeChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->dismiss()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final start()V
    .locals 8

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v4, Landroid/content/IntentFilter;

    .line 15
    .line 16
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    .line 36
    .line 37
    invoke-interface {v1}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->getAction()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Lcom/android/systemui/popup/PopupUI$1;

    .line 59
    .line 60
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 61
    .line 62
    const-string v5, "com.samsung.systemui.POPUP_UI_PERMISSION"

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x2

    .line 66
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    return-void
.end method
