.class public final Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mSmartPopupViewPackageListUri:Landroid/net/Uri;

.field public final mZenModeUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/SmartPopupViewService;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "floating_noti_package_list"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    .line 14
    .line 15
    const-string/jumbo v1, "zen_mode"

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->mZenModeUri:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->loadingEnabledListFromDB()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, -0x1

    .line 33
    invoke-virtual {v3, v0, v4, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v1, p1, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    .line 45
    .line 46
    if-eq v1, v0, :cond_0

    .line 47
    .line 48
    iput v0, p1, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    .line 49
    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v2, v4, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final loadingEnabledListFromDB()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/wm/shell/freeform/SmartPopupViewService;->access$100(Lcom/android/wm/shell/freeform/SmartPopupViewService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 46
    .line 47
    const/16 v4, 0x18

    .line 48
    .line 49
    invoke-virtual {v3, v4, v2}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    .line 56
    .line 57
    check-cast v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    .line 65
    .line 66
    check-cast p0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->loadingEnabledListFromDB()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->mZenModeUri:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string/jumbo p2, "zen_mode"

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 35
    .line 36
    iget p2, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    .line 37
    .line 38
    if-eq p2, p1, :cond_1

    .line 39
    .line 40
    iput p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    .line 41
    .line 42
    :cond_1
    return-void
.end method
