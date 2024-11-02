.class public final Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final FIX_BUDS3_ICON_SAT_MAJOR_VERSION:I

.field public static final INSTANCE:Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;

.field public static final SOUNDASSISTANT_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;->INSTANCE:Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;

    .line 7
    .line 8
    const-string v0, "com.samsung.android.soundassistant"

    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;->SOUNDASSISTANT_PACKAGE_NAME:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    sput v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;->FIX_BUDS3_ICON_SAT_MAJOR_VERSION:I

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
