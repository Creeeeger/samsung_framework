.class public final Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final isAdjustMediaVolumeOnly:Z

.field private semSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;->semSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;->isAdjustMediaVolumeOnly:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getSemSoundAssistantManager()Lcom/samsung/android/media/SemSoundAssistantManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;->semSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isAdjustMediaVolumeOnly()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;->isAdjustMediaVolumeOnly:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setSemSoundAssistantManager(Lcom/samsung/android/media/SemSoundAssistantManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;->semSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 2
    .line 3
    return-void
.end method
