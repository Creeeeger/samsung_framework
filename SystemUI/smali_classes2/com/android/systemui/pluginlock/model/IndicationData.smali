.class public final Lcom/android/systemui/pluginlock/model/IndicationData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mHelpTextData:Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "help_text"
    .end annotation
.end field

.field private mLockIconData:Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lock_icon"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;-><init>(Lcom/android/systemui/pluginlock/model/IndicationData;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mLockIconData:Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;-><init>(Lcom/android/systemui/pluginlock/model/IndicationData;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mLockIconData:Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mLockIconData:Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    .line 13
    .line 14
    return-object p0
.end method
