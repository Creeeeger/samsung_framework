.class public final Lcom/android/systemui/controls/util/ControlsBackupSetting;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public controlDevice:Z

.field public isOOBECompleted:Z

.field public selectedComponent:Ljava/lang/String;

.field public showDevice:Z


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->showDevice:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->controlDevice:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->isOOBECompleted:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->selectedComponent:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/util/ControlsBackupSetting;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/controls/util/ControlsBackupSetting;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->showDevice:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/android/systemui/controls/util/ControlsBackupSetting;->showDevice:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->controlDevice:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/android/systemui/controls/util/ControlsBackupSetting;->controlDevice:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->isOOBECompleted:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/android/systemui/controls/util/ControlsBackupSetting;->isOOBECompleted:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->selectedComponent:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/systemui/controls/util/ControlsBackupSetting;->selectedComponent:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->showDevice:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->controlDevice:Z

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move v2, v1

    .line 14
    :cond_1
    add-int/2addr v0, v2

    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->isOOBECompleted:Z

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move v1, v2

    .line 23
    :goto_0
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->selectedComponent:Ljava/lang/String;

    .line 27
    .line 28
    if-nez p0, :cond_3

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    :goto_1
    add-int/2addr v0, p0

    .line 37
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->showDevice:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->controlDevice:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->isOOBECompleted:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackupSetting;->selectedComponent:Ljava/lang/String;

    .line 8
    .line 9
    const-string v3, "ControlsBackupSetting(showDevice="

    .line 10
    .line 11
    const-string v4, ", controlDevice="

    .line 12
    .line 13
    const-string v5, ", isOOBECompleted="

    .line 14
    .line 15
    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", selectedComponent="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ")"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
