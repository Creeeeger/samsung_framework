.class public final Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;


# instance fields
.field public final distanceX:I

.field public final distanceY:I

.field public final duration:J

.field public final hintId:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->hintId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceX:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceY:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->duration:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

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
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->hintId:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->hintId:I

    .line 16
    .line 17
    if-eq v3, v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceX:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceX:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceY:I

    .line 28
    .line 29
    iget v3, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceY:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-wide v3, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->duration:J

    .line 35
    .line 36
    iget-wide p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->duration:J

    .line 37
    .line 38
    cmp-long p0, v3, p0

    .line 39
    .line 40
    if-eqz p0, :cond_5

    .line 41
    .line 42
    return v2

    .line 43
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->hintId:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceX:I

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceY:I

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-wide v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->duration:J

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    add-int/2addr p0, v0

    .line 30
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MoveBottomGestureHintDistance(hintId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->hintId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", distanceX="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceX:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", distanceY="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->distanceY:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", duration="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;->duration:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
