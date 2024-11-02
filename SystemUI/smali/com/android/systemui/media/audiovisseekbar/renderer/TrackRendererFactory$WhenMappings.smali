.class public abstract synthetic Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererFactory$WhenMappings;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;->values()[Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;->WAVE_MULTI_AREA_AUTO:Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 18
    .line 19
    return-void
.end method
