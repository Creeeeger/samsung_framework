.class public final Lcom/android/wm/shell/freeform/SmartPopupViewService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/SmartPopupViewService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

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
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.extra.REPLACING"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, ":"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    array-length p2, p1

    .line 40
    :goto_0
    if-ge v1, p2, :cond_0

    .line 41
    .line 42
    aget-object v0, p1, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p2, 0x1

    .line 48
    aget-object p1, p1, p2

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p2, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 53
    .line 54
    sget v0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->$r8$clinit:I

    .line 55
    .line 56
    iget-object p2, p2, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    .line 57
    .line 58
    check-cast p2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    const-string p2, "[SmartPopupViewService] mPackageRemovedReceiver remove : "

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const-string v0, "FreeformContainer"

    .line 73
    .line 74
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 78
    .line 79
    iget-object p2, p2, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    .line 80
    .line 81
    check-cast p2, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/android/wm/shell/freeform/SmartPopupViewService;->access$000(Lcom/android/wm/shell/freeform/SmartPopupViewService;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    .line 95
    .line 96
    invoke-static {p1, p0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->putPackageStrListToDB(Landroid/content/Context;Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method
