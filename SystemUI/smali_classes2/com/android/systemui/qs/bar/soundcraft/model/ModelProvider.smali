.class public final Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

.field public playingAudioPackageNameForAppSetting:Ljava/lang/String;

.field public final settings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p2

    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->settings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;

    .line 9
    .line 10
    new-instance v15, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/16 v14, 0xfff

    .line 25
    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    move-object v1, v15

    .line 29
    move-object/from16 v17, v15

    .line 30
    .line 31
    move-object/from16 v15, v16

    .line 32
    .line 33
    invoke-direct/range {v1 .. v15}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    move-object/from16 v1, v17

    .line 37
    .line 38
    iput-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 39
    .line 40
    return-void
.end method
