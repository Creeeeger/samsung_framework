.class public final Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus$Companion;


# instance fields
.field public final instanceId:J

.field public final isEnabled:Z

.field public final parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

.field public final tag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(JZLjava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->instanceId:J

    .line 4
    iput-boolean p3, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->isEnabled:Z

    .line 5
    iput-object p4, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->tag:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    return-void
.end method

.method public synthetic constructor <init>(JZLjava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;-><init>(JZLjava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;

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
    check-cast p1, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;

    .line 12
    .line 13
    iget-wide v3, p1, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->instanceId:J

    .line 14
    .line 15
    iget-wide v5, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->instanceId:J

    .line 16
    .line 17
    cmp-long v1, v5, v3

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->isEnabled:Z

    .line 23
    .line 24
    iget-boolean v3, p1, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->isEnabled:Z

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->tag:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->tag:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 43
    .line 44
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->instanceId:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->isEnabled:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    add-int/2addr v0, v1

    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->tag:Ljava/lang/String;

    .line 18
    .line 19
    const/16 v2, 0x1f

    .line 20
    .line 21
    invoke-static {v1, v0, v2}, Landroidx/picker/model/AppInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    add-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ConditionStatus(instanceId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->instanceId:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isEnabled="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->isEnabled:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", tag="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->tag:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", parameterValues="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 p0, 0x29

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
