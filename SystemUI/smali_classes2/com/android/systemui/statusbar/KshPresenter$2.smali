.class public final Lcom/android/systemui/statusbar/KshPresenter$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-string p1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    add-int/lit8 p2, p2, -0x2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getSamsungSystemShortcuts()Landroid/view/KeyboardShortcutGroup;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 59
    .line 60
    iput-object p1, p2, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 78
    .line 79
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method
