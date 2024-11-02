.class public final Lcom/android/systemui/pluginlock/model/NonSwipeModeData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mAngle:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "angle"
    .end annotation
.end field

.field private mNonSwipeMode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    .line 10
    .line 11
    const/16 v0, 0x2d

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 6
    .line 7
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    check-cast p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    .line 27
    .line 28
    if-nez p0, :cond_2

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    :cond_2
    if-eqz p0, :cond_4

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    :cond_3
    const/4 v1, 0x1

    .line 45
    :cond_4
    return v1
.end method

.method public final getAngle()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMode()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method
