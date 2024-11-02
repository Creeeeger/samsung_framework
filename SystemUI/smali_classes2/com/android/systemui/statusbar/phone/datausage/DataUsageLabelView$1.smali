.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

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
    sget-boolean p2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->DEBUG:Z

    .line 6
    .line 7
    const-string v0, "DataUsageLabelView"

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string v1, "onReceive: "

    .line 12
    .line 13
    const-string v2, " DataUsage String: "

    .line 14
    .line 15
    invoke-static {v1, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-lez v1, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->updateUsageInfo()V

    .line 52
    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p2, "ACTION_SIM_STATE_CHANGED: visibility="

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 64
    .line 65
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, " rewrite String to "

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_3

    .line 90
    .line 91
    const-string p2, "com.samsung.systemui.statusbar.ANIMATING"

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->updateUsageInfo()V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_1
    return-void
.end method
