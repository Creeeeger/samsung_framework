.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public final service$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    sget-object p1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$service$2;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$service$2;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->service$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    return-void
.end method

.method public static final access$buildActions(Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)Ljava/util/HashMap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getSpatialAudio()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;

    .line 20
    .line 21
    sget-object v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->SPATIAL_AUDIO:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v2, v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getHeadTracking()Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;

    .line 44
    .line 45
    sget-object v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->HEAD_TRACKING:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v2, v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getEqualizerList()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;->getState()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;

    .line 86
    .line 87
    sget-object v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->EQUALIZER:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getEqualizerList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {p0, v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 112
    .line 113
    const-string p1, "Collection contains no element matching the predicate."

    .line 114
    .line 115
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getVoiceBoost()Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;

    .line 130
    .line 131
    sget-object v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->VOICE_BOOST:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 132
    .line 133
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {p0, v2, v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getVolumeNormalization()Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;

    .line 154
    .line 155
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->VOLUME_NORMALIZATION:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 156
    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {p0, v1, p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    return-object p0
.end method

.method public static final access$buildConditions(Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ConditionParamCreator;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ConditionParamCreator;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo$Companion;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const-string v3, "com.android.settings"

    .line 38
    .line 39
    const-string/jumbo v4, "playing_audio"

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    sget-object v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 51
    .line 52
    invoke-direct {v2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v3, "playing_audio_app_uid"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3, p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo p0, "playing_audio_app_package_name"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-object v0
.end method


# virtual methods
.method public final createRoutine(Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->handler$delegate:Lkotlin/Lazy;

    .line 12
    .line 13
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/os/Handler;

    .line 18
    .line 19
    new-instance p1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$sam$java_lang_Runnable$0;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final getRoutineId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->service$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    .line 10
    .line 11
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->SOUND_CRAFT:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    .line 12
    .line 13
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "findRoutineIdsByMonitoredPackage: "

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, ", type:"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string v2, "Routine@AutomationService[1.0.1]: "

    .line 46
    .line 47
    const-string v4, "AutomationServiceImpl@SDK"

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    sget-object v2, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    .line 57
    .line 58
    invoke-static {v2, v1}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;->access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string p0, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/monitor/"

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string/jumbo v0, "type"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v8, 0x0

    .line 115
    const/4 v9, 0x0

    .line 116
    const/4 v10, 0x0

    .line 117
    const/4 v11, 0x0

    .line 118
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 119
    .line 120
    .line 121
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    if-eqz p0, :cond_4

    .line 123
    .line 124
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-lez v0, :cond_3

    .line 129
    .line 130
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    :cond_1
    const-string/jumbo v0, "uuid"

    .line 137
    .line 138
    .line 139
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    const/4 v1, -0x1

    .line 144
    if-eq v0, v1, :cond_2

    .line 145
    .line 146
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_1

    .line 158
    .line 159
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .line 161
    const/4 v0, 0x0

    .line 162
    :try_start_2
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    :catchall_1
    move-exception v1

    .line 169
    :try_start_4
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 173
    :catch_0
    move-exception p0

    .line 174
    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v3, "getRoutineUuidByMonitoredPackageAsConditionParam: "

    .line 179
    .line 180
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {v4, p0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    :goto_0
    move-object p0, v2

    .line 201
    :goto_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Ljava/lang/String;

    .line 206
    .line 207
    const-string v0, "getRoutineId : packageName="

    .line 208
    .line 209
    const-string v1, ", return id="

    .line 210
    .line 211
    const-string v2, " (sdk=1.0.1)"

    .line 212
    .line 213
    invoke-static {v0, p1, v1, p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const-string v0, "SoundCraft.RoutineManager"

    .line 218
    .line 219
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    return-object p0
.end method

.method public final updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3, p0, p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;-><init>(Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->handler$delegate:Lkotlin/Lazy;

    .line 12
    .line 13
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/os/Handler;

    .line 18
    .line 19
    new-instance p1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$sam$java_lang_Runnable$0;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
