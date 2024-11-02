.class public final Lcom/android/systemui/pluginlock/model/FingerPrintData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private mFingerPrintHeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private mFingerPrintImageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_size"
    .end annotation
.end field

.field private mFingerPrintMarginBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    check-cast p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 6
    .line 7
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    check-cast p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_6

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    :cond_2
    if-eqz v0, :cond_6

    .line 35
    .line 36
    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    .line 45
    .line 46
    if-nez p0, :cond_4

    .line 47
    .line 48
    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    :cond_4
    if-eqz p0, :cond_6

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_6

    .line 61
    .line 62
    :cond_5
    const/4 v1, 0x1

    .line 63
    :cond_6
    return v1
.end method

.method public final setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setImageSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPaddingBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
