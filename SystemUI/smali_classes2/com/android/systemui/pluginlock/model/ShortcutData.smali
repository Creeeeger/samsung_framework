.class public final Lcom/android/systemui/pluginlock/model/ShortcutData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mImageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_size"
    .end annotation
.end field

.field private mPaddingBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom"
    .end annotation
.end field

.field private mPaddingBottomLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom_land"
    .end annotation
.end field

.field private mPaddingSide:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_side"
    .end annotation
.end field

.field private mPaddingSideLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_side_land"
    .end annotation
.end field

.field private mShortcutInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcutInfo"
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
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
    const/4 v0, -0x1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mVisibility:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottom:Ljava/lang/Integer;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSide:Ljava/lang/Integer;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottomLand:Ljava/lang/Integer;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSideLand:Ljava/lang/Integer;

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
    check-cast p0, Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getVisibility()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mVisibility:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final setImageSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mImageSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPaddingBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottom:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPaddingBottomLand(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingBottomLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPaddingSide(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSide:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPaddingSideLand(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mPaddingSideLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortcutInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mShortcutInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ShortcutData;->mVisibility:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
