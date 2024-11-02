.class public final Lcom/android/systemui/pluginlock/model/ServiceBoxData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mBottomY:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom_y"
    .end annotation
.end field

.field private mBottomYLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom_y_land"
    .end annotation
.end field

.field private mClockInfo:Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_info"
    .end annotation
.end field

.field private mExpandable:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expandable"
    .end annotation
.end field

.field private mTopY:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_y"
    .end annotation
.end field

.field private mTopYLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_y_land"
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field

.field private mVisibilityLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility_land"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopY:Ljava/lang/Integer;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomY:Ljava/lang/Integer;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopYLand:Ljava/lang/Integer;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomYLand:Ljava/lang/Integer;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibilityLand:Ljava/lang/Integer;

    .line 27
    .line 28
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
    check-cast p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getBottomY()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomY:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBottomYLand()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomYLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;-><init>(Lcom/android/systemui/pluginlock/model/ServiceBoxData;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getTopY()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopY:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTopYLand()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopYLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVisibility()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVisibilityLand()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibilityLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setBottomY(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomY:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setBottomYLand(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mBottomYLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setTopY(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopY:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setTopYLand(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mTopYLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setVisibilityLand(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->mVisibilityLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
