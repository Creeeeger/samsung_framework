.class public final Lcom/android/systemui/util/QsResetSettingsManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAppliers:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mDemoAppliers:Ljava/util/ArrayList;

.field public final mSoftResetReceiver:Lcom/android/systemui/util/QsResetSettingsManager$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Lcom/android/systemui/util/QsResetSettingsManager$1;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance p1, Lcom/android/systemui/util/QsResetSettingsManager$1;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/util/QsResetSettingsManager$1;-><init>(Lcom/android/systemui/util/QsResetSettingsManager;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Lcom/android/systemui/util/QsResetSettingsManager$1;

    .line 29
    .line 30
    new-instance p0, Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final registerApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-ne v1, p1, :cond_0

    .line 15
    .line 16
    const-string p0, "QsResetSettingsManager"

    .line 17
    .line 18
    const-string/jumbo p1, "registerApplier() mAppliers has same applier"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final registerDemoApplier(Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-ne v1, p1, :cond_0

    .line 15
    .line 16
    const-string p0, "QsResetSettingsManager"

    .line 17
    .line 18
    const-string/jumbo p1, "registerDemoApplier() mAppliers has same applier"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
