.class public Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;
.super Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mDataUsage:Ljava/lang/String;

.field public mDataUsageVisibility:Z

.field public mHandler:Landroid/os/Handler;

.field public final mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

.field public mThread:Ljava/lang/Thread;

.field public final mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    .line 6
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    .line 7
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    const-string p2, ""

    .line 19
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    .line 22
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    .line 23
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    const-string p2, ""

    .line 11
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    .line 14
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    .line 15
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->initView()V

    return-void
.end method


# virtual methods
.method public final initView()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    .line 20
    .line 21
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    .line 33
    .line 34
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final updateDataText()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const v1, 0x7f130d5b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, ": "

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v0, ""

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 43
    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Data Usage:"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 73
    .line 74
    const-string v1, "DataUsageLabelView"

    .line 75
    .line 76
    invoke-static {v0, p0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final updateUsageInfo()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->updateDataText()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;

    .line 14
    .line 15
    const-string/jumbo v1, "updateUsageInfo"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p0, "DataUsageLabelView"

    .line 28
    .line 29
    const-string v0, "Last Thread still running"

    .line 30
    .line 31
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
