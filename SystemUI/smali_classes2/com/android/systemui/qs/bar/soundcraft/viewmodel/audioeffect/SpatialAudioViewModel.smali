.class public final Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;
.super Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentPosition:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

.field public final modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

.field public final routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

.field public final wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 11
    .line 12
    sget-object p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->currentPosition:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getIcon()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const v0, 0x7f0810fd

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
    .locals 5

    .line 1
    const-string v0, "notifyChange"

    .line 2
    .line 3
    const-string v1, "SoundCraft.SpatialAudioViewModel"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getSpatialAudio()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v3

    .line 22
    :goto_0
    const/4 v4, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v0, v4

    .line 27
    :goto_1
    if-eqz v0, :cond_6

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getSpatialAudio()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v2, v3

    .line 41
    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getHeadTracking()Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :cond_3
    const-string/jumbo v0, "spatialAudio="

    .line 52
    .line 53
    .line 54
    const-string v4, ", headTracking="

    .line 55
    .line 56
    invoke-static {v0, v2, v4, v3, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    if-eqz v2, :cond_5

    .line 67
    .line 68
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_ONLY:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 72
    .line 73
    :goto_3
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->currentPosition:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 74
    .line 75
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    .line 77
    :cond_6
    if-nez v4, :cond_7

    .line 78
    .line 79
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->currentPosition:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 82
    .line 83
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    const v1, 0x7f131093

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->context:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;->selectedOptionName:Landroidx/lifecycle/MutableLiveData;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->currentPosition:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->getTitleResId()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final onChooserDismiss()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;->showChooser:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onClick()V
    .locals 6

    .line 1
    const-string v0, "onClick"

    .line 2
    .line 3
    const-string v1, "SoundCraft.SpatialAudioViewModel"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->values()[Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getHeadTracking()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    sget-object v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 27
    .line 28
    move-object v3, v0

    .line 29
    check-cast v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;->optionNames:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    new-instance v3, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/16 v4, 0xa

    .line 39
    .line 40
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->context:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->getTitleResId()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string/jumbo v4, "options="

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;->showChooser:Landroidx/lifecycle/MutableLiveData;

    .line 99
    .line 100
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final onItemSelected(I)V
    .locals 5

    .line 1
    const-string v0, "onItemSelected : position="

    .line 2
    .line 3
    const-string v1, "SoundCraft.SpatialAudioViewModel"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->getPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->setSpatialAudio(Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getHeadTracking()Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->setHeadTracking(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_ONLY:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->getPosition()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 51
    .line 52
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->setSpatialAudio(Ljava/lang/Boolean;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getHeadTracking()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 69
    .line 70
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->setHeadTracking(Ljava/lang/Boolean;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->getPosition()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ne p1, v0, :cond_2

    .line 83
    .line 84
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 85
    .line 86
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->setSpatialAudio(Ljava/lang/Boolean;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getHeadTracking()Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->setHeadTracking(Ljava/lang/Boolean;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->playingAudioPackageNameForAppSetting:Ljava/lang/String;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 113
    .line 114
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    iget-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 121
    .line 122
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 123
    .line 124
    .line 125
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 126
    .line 127
    :cond_3
    if-nez v2, :cond_4

    .line 128
    .line 129
    iget-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 130
    .line 131
    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->createRoutine(Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    .line 136
    :cond_5
    if-nez v2, :cond_6

    .line 137
    .line 138
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 139
    .line 140
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;->updateBudsInfo(Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 143
    .line 144
    .line 145
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;->selectedOptionName:Landroidx/lifecycle/MutableLiveData;

    .line 146
    .line 147
    invoke-static {}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->values()[Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    aget-object p1, v1, p1

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->getTitleResId()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->context:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;->onChooserDismiss()V

    .line 167
    .line 168
    .line 169
    return-void
.end method
