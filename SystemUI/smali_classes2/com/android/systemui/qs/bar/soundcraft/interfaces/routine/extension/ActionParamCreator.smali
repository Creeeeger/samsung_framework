.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionParamCreator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putActionValue(Ljava/util/HashMap;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->values()[Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    array-length v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->isSupport()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 43
    .line 44
    sget-object v2, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo$Companion;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->getProjectName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 73
    .line 74
    invoke-direct {v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string/jumbo v3, "v2IntentParam"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3, p2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    return-void
.end method
