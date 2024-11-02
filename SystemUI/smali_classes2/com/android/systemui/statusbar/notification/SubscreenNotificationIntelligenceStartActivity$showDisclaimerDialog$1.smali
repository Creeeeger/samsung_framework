.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p2, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "suggestion_responses"

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    iget-object p2, p2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 27
    .line 28
    invoke-virtual {p2, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput v2, p2, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 33
    .line 34
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->setSuggestResponsesUsed()V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
