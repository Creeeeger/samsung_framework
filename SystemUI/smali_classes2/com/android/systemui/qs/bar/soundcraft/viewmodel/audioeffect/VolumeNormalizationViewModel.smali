.class public final Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;
.super Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

.field public final routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

.field public final wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;->wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;->routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getIcon()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const v0, 0x7f0810ff

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final notifyChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->name:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const-string v1, "Volume normalization"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getVolumeNormalization()Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "notifyChange : isSelected="

    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "SoundCraft.VolumeNormalizationViewModel"

    .line 40
    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getVolumeNormalization()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 16
    .line 17
    xor-int/lit8 v3, v1, 0x1

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->setVolumeNormalization(Ljava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->playingAudioPackageNameForAppSetting:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;->routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 49
    .line 50
    invoke-virtual {v3, v1, v4, v2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    .line 55
    :cond_0
    if-nez v2, :cond_1

    .line 56
    .line 57
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 58
    .line 59
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->createRoutine(Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 63
    .line 64
    :cond_2
    if-nez v2, :cond_3

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;->wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;->updateBudsInfo(Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;->notifyChange()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
