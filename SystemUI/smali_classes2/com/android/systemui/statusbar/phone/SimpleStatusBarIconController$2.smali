.class public final Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "simple_status_bar"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsValue:I

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "onChanged:"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsValue:I

    .line 38
    .line 39
    const-string v1, "SimpleStatusBarIconController"

    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingChangeListener:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;

    .line 45
    .line 46
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsValue:I

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 49
    .line 50
    iput p0, p1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSimpleStatusBarSettingsValue:I

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 53
    .line 54
    .line 55
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 58
    .line 59
    .line 60
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    .line 63
    .line 64
    .line 65
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method
