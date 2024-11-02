.class public final Lcom/android/systemui/pluginlock/component/PluginLockSwipe;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mNonSwipeMode:I

.field public mNonSwipeModeAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeMode:I

    .line 6
    .line 7
    const/16 p1, 0x2d

    .line 8
    .line 9
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    .line 1
    const-string v0, "PluginLockSwipe"

    .line 2
    .line 3
    const-string v1, "apply()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->getMode()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeMode:I

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->getAngle()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    .line 51
    .line 52
    :cond_1
    return-void
.end method
