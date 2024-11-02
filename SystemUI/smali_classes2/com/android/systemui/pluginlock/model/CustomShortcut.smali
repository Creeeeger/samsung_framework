.class public final Lcom/android/systemui/pluginlock/model/CustomShortcut;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mDirection:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "direction"
    .end annotation
.end field

.field private mIconSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_size"
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

.field private mPosition:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field private mShortCutInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_info"
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
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottom:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSide:Ljava/lang/Integer;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottomLand:Ljava/lang/Integer;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSideLand:Ljava/lang/Integer;

    .line 16
    .line 17
    return-void
.end method
