.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->tag:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object p0, v0, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->parameterValueMap:Ljava/util/Map;

    .line 39
    .line 40
    check-cast p0, Ljava/util/HashMap;

    .line 41
    .line 42
    const-string/jumbo p1, "v2IntentParam"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ljava/lang/String;

    .line 64
    .line 65
    move-object p2, p0

    .line 66
    :cond_2
    return-object p2
.end method
