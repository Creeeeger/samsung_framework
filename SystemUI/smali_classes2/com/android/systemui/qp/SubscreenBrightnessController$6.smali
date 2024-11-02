.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    sput-boolean p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialogEnabled:Z

    .line 8
    .line 9
    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 34
    .line 35
    const-string/jumbo v2, "sub_screen_brightness_mode"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    move p1, v1

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 54
    .line 55
    iget v0, p1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    .line 56
    .line 57
    add-int/2addr v0, v1

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setProgress(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string/jumbo p1, "shown_max_brightness_dialog"

    .line 72
    .line 73
    .line 74
    const/4 v0, -0x2

    .line 75
    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method
