.class public final Lcom/android/keyguard/KeyguardFaceListenModel;
.super Lcom/android/keyguard/KeyguardListenModel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TABLE_HEADERS:Ljava/util/List;


# instance fields
.field public alternateBouncerShowing:Z

.field public final asStringList$delegate:Lkotlin/Lazy;

.field public final authInterruptActive:Z

.field public biometricSettingEnabledForUser:Z

.field public bouncerFullyShown:Z

.field public faceAndFpNotAuthenticated:Z

.field public faceAuthAllowed:Z

.field public faceDisabled:Z

.field public faceLockedOut:Z

.field public goingToSleep:Z

.field public keyguardAwake:Z

.field public keyguardGoingAway:Z

.field public listening:Z

.field public listeningForFaceAssistant:Z

.field public occludingAppRequestingFaceAuth:Z

.field public postureAllowsListening:Z

.field public secureCameraLaunched:Z

.field public supportsDetect:Z

.field public switchingUser:Z

.field public systemUser:Z

.field public timeMillis:J

.field public udfpsFingerDown:Z

.field public userId:I

.field public userNotTrustedOrDetectionIsNeeded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardFaceListenModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "timestamp"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "time_millis"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "userId"

    .line 14
    .line 15
    .line 16
    const-string v5, "listening"

    .line 17
    .line 18
    const-string v6, "authInterruptActive"

    .line 19
    .line 20
    const-string v7, "biometricSettingEnabledForUser"

    .line 21
    .line 22
    const-string v8, "bouncerFullyShown"

    .line 23
    .line 24
    const-string v9, "faceAndFpNotAuthenticated"

    .line 25
    .line 26
    const-string v10, "faceAuthAllowed"

    .line 27
    .line 28
    const-string v11, "faceDisabled"

    .line 29
    .line 30
    const-string v12, "faceLockedOut"

    .line 31
    .line 32
    const-string v13, "goingToSleep"

    .line 33
    .line 34
    const-string v14, "keyguardAwake"

    .line 35
    .line 36
    const-string v15, "keyguardGoingAway"

    .line 37
    .line 38
    const-string v16, "listeningForFaceAssistant"

    .line 39
    .line 40
    const-string/jumbo v17, "occludingAppRequestingFaceAuth"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v18, "postureAllowsListening"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v19, "secureCameraLaunched"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v20, "supportsDetect"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v21, "switchingUser"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v22, "systemUser"

    .line 56
    .line 57
    .line 58
    const-string/jumbo v23, "udfpsBouncerShowing"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v24, "udfpsFingerDown"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v25, "userNotTrustedOrDetectionIsNeeded"

    .line 65
    .line 66
    .line 67
    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/android/keyguard/KeyguardFaceListenModel;->TABLE_HEADERS:Ljava/util/List;

    .line 76
    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0x7fffff

    const/16 v26, 0x0

    invoke-direct/range {v0 .. v26}, Lcom/android/keyguard/KeyguardFaceListenModel;-><init>(JIZZZZZZZZZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JIZZZZZZZZZZZZZZZZZZZZZ)V
    .locals 3

    move-object v0, p0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardListenModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p1

    .line 4
    iput-wide v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    move v1, p3

    .line 5
    iput v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    move v1, p4

    .line 6
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    move v1, p5

    .line 7
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    move v1, p6

    .line 8
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    move v1, p7

    .line 9
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    move v1, p8

    .line 10
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    move v1, p9

    .line 11
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    move v1, p10

    .line 12
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    move v1, p11

    .line 13
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    move v1, p12

    .line 14
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    move/from16 v1, p13

    .line 15
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    move/from16 v1, p14

    .line 16
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    move/from16 v1, p15

    .line 17
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    move/from16 v1, p16

    .line 18
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    move/from16 v1, p17

    .line 19
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    move/from16 v1, p18

    .line 20
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    move/from16 v1, p19

    .line 21
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    move/from16 v1, p20

    .line 22
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    move/from16 v1, p21

    .line 23
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    move/from16 v1, p22

    .line 24
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    move/from16 v1, p23

    .line 25
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    move/from16 v1, p24

    .line 26
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 27
    new-instance v1, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;-><init>(Lcom/android/keyguard/KeyguardFaceListenModel;)V

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->asStringList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(JIZZZZZZZZZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p25

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    goto :goto_d

    :cond_d
    move/from16 v4, p15

    :goto_d
    move/from16 p15, v4

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_e

    :cond_e
    move/from16 v4, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move/from16 v16, p17

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move/from16 v17, p18

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move/from16 v18, p19

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move/from16 v19, p20

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move/from16 v20, p21

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move/from16 v21, p22

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move/from16 v22, p23

    :goto_15
    const/high16 v23, 0x400000

    and-int v0, v0, v23

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    :cond_16
    move/from16 v0, p24

    :goto_16
    move-wide/from16 p1, v1

    move/from16 p3, v3

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move/from16 p16, v4

    move/from16 p17, v16

    move/from16 p18, v17

    move/from16 p19, v18

    move/from16 p20, v19

    move/from16 p21, v20

    move/from16 p22, v21

    move/from16 p23, v22

    move/from16 p24, v0

    .line 2
    invoke-direct/range {p0 .. p24}, Lcom/android/keyguard/KeyguardFaceListenModel;-><init>(JIZZZZZZZZZZZZZZZZZZZZZ)V

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
    instance-of v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;

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
    check-cast p1, Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    .line 23
    .line 24
    iget v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    .line 30
    .line 31
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    .line 32
    .line 33
    if-eq v1, v3, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    .line 37
    .line 38
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    .line 39
    .line 40
    if-eq v1, v3, :cond_5

    .line 41
    .line 42
    return v2

    .line 43
    :cond_5
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    .line 44
    .line 45
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    .line 46
    .line 47
    if-eq v1, v3, :cond_6

    .line 48
    .line 49
    return v2

    .line 50
    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    .line 51
    .line 52
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    .line 53
    .line 54
    if-eq v1, v3, :cond_7

    .line 55
    .line 56
    return v2

    .line 57
    :cond_7
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    .line 58
    .line 59
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    .line 60
    .line 61
    if-eq v1, v3, :cond_8

    .line 62
    .line 63
    return v2

    .line 64
    :cond_8
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    .line 65
    .line 66
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    .line 67
    .line 68
    if-eq v1, v3, :cond_9

    .line 69
    .line 70
    return v2

    .line 71
    :cond_9
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    .line 72
    .line 73
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    .line 74
    .line 75
    if-eq v1, v3, :cond_a

    .line 76
    .line 77
    return v2

    .line 78
    :cond_a
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    .line 79
    .line 80
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    .line 81
    .line 82
    if-eq v1, v3, :cond_b

    .line 83
    .line 84
    return v2

    .line 85
    :cond_b
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    .line 86
    .line 87
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    .line 88
    .line 89
    if-eq v1, v3, :cond_c

    .line 90
    .line 91
    return v2

    .line 92
    :cond_c
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    .line 93
    .line 94
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    .line 95
    .line 96
    if-eq v1, v3, :cond_d

    .line 97
    .line 98
    return v2

    .line 99
    :cond_d
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    .line 100
    .line 101
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    .line 102
    .line 103
    if-eq v1, v3, :cond_e

    .line 104
    .line 105
    return v2

    .line 106
    :cond_e
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    .line 107
    .line 108
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    .line 109
    .line 110
    if-eq v1, v3, :cond_f

    .line 111
    .line 112
    return v2

    .line 113
    :cond_f
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    .line 114
    .line 115
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    .line 116
    .line 117
    if-eq v1, v3, :cond_10

    .line 118
    .line 119
    return v2

    .line 120
    :cond_10
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    .line 121
    .line 122
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    .line 123
    .line 124
    if-eq v1, v3, :cond_11

    .line 125
    .line 126
    return v2

    .line 127
    :cond_11
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    .line 128
    .line 129
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    .line 130
    .line 131
    if-eq v1, v3, :cond_12

    .line 132
    .line 133
    return v2

    .line 134
    :cond_12
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    .line 135
    .line 136
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    .line 137
    .line 138
    if-eq v1, v3, :cond_13

    .line 139
    .line 140
    return v2

    .line 141
    :cond_13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    .line 142
    .line 143
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    .line 144
    .line 145
    if-eq v1, v3, :cond_14

    .line 146
    .line 147
    return v2

    .line 148
    :cond_14
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    .line 149
    .line 150
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    .line 151
    .line 152
    if-eq v1, v3, :cond_15

    .line 153
    .line 154
    return v2

    .line 155
    :cond_15
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    .line 156
    .line 157
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    .line 158
    .line 159
    if-eq v1, v3, :cond_16

    .line 160
    .line 161
    return v2

    .line 162
    :cond_16
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    .line 163
    .line 164
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    .line 165
    .line 166
    if-eq v1, v3, :cond_17

    .line 167
    .line 168
    return v2

    .line 169
    :cond_17
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 170
    .line 171
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 172
    .line 173
    if-eq p0, p1, :cond_18

    .line 174
    .line 175
    return v2

    .line 176
    :cond_18
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

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
    iget v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move v1, v2

    .line 23
    :cond_0
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    move v1, v2

    .line 31
    :cond_1
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_2
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    move v1, v2

    .line 47
    :cond_3
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    move v1, v2

    .line 55
    :cond_4
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    move v1, v2

    .line 63
    :cond_5
    add-int/2addr v0, v1

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    move v1, v2

    .line 71
    :cond_6
    add-int/2addr v0, v1

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    .line 75
    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    move v1, v2

    .line 79
    :cond_7
    add-int/2addr v0, v1

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 81
    .line 82
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    .line 83
    .line 84
    if-eqz v1, :cond_8

    .line 85
    .line 86
    move v1, v2

    .line 87
    :cond_8
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    .line 91
    .line 92
    if-eqz v1, :cond_9

    .line 93
    .line 94
    move v1, v2

    .line 95
    :cond_9
    add-int/2addr v0, v1

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    .line 99
    .line 100
    if-eqz v1, :cond_a

    .line 101
    .line 102
    move v1, v2

    .line 103
    :cond_a
    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    .line 105
    .line 106
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    .line 107
    .line 108
    if-eqz v1, :cond_b

    .line 109
    .line 110
    move v1, v2

    .line 111
    :cond_b
    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    .line 113
    .line 114
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    .line 115
    .line 116
    if-eqz v1, :cond_c

    .line 117
    .line 118
    move v1, v2

    .line 119
    :cond_c
    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    .line 123
    .line 124
    if-eqz v1, :cond_d

    .line 125
    .line 126
    move v1, v2

    .line 127
    :cond_d
    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    .line 129
    .line 130
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    .line 131
    .line 132
    if-eqz v1, :cond_e

    .line 133
    .line 134
    move v1, v2

    .line 135
    :cond_e
    add-int/2addr v0, v1

    .line 136
    mul-int/lit8 v0, v0, 0x1f

    .line 137
    .line 138
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    .line 139
    .line 140
    if-eqz v1, :cond_f

    .line 141
    .line 142
    move v1, v2

    .line 143
    :cond_f
    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    .line 145
    .line 146
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    .line 147
    .line 148
    if-eqz v1, :cond_10

    .line 149
    .line 150
    move v1, v2

    .line 151
    :cond_10
    add-int/2addr v0, v1

    .line 152
    mul-int/lit8 v0, v0, 0x1f

    .line 153
    .line 154
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    .line 155
    .line 156
    if-eqz v1, :cond_11

    .line 157
    .line 158
    move v1, v2

    .line 159
    :cond_11
    add-int/2addr v0, v1

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    .line 161
    .line 162
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    .line 163
    .line 164
    if-eqz v1, :cond_12

    .line 165
    .line 166
    move v1, v2

    .line 167
    :cond_12
    add-int/2addr v0, v1

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    .line 171
    .line 172
    if-eqz v1, :cond_13

    .line 173
    .line 174
    move v1, v2

    .line 175
    :cond_13
    add-int/2addr v0, v1

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    .line 177
    .line 178
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 179
    .line 180
    if-eqz p0, :cond_14

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_14
    move v2, p0

    .line 184
    :goto_0
    add-int/2addr v0, v2

    .line 185
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 4
    .line 5
    iget v3, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    .line 6
    .line 7
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    .line 8
    .line 9
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    .line 10
    .line 11
    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    .line 12
    .line 13
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    .line 14
    .line 15
    iget-boolean v8, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    .line 16
    .line 17
    iget-boolean v9, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    .line 18
    .line 19
    iget-boolean v10, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    .line 20
    .line 21
    iget-boolean v11, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    .line 22
    .line 23
    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    .line 24
    .line 25
    iget-boolean v13, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    .line 26
    .line 27
    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    .line 28
    .line 29
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    .line 30
    .line 31
    move/from16 v16, v15

    .line 32
    .line 33
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    .line 34
    .line 35
    move/from16 v17, v15

    .line 36
    .line 37
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    .line 38
    .line 39
    move/from16 v18, v15

    .line 40
    .line 41
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    .line 42
    .line 43
    move/from16 v19, v15

    .line 44
    .line 45
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    .line 46
    .line 47
    move/from16 v20, v15

    .line 48
    .line 49
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    .line 50
    .line 51
    move/from16 v21, v15

    .line 52
    .line 53
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    .line 54
    .line 55
    move/from16 v22, v15

    .line 56
    .line 57
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    .line 58
    .line 59
    move/from16 v23, v15

    .line 60
    .line 61
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 62
    .line 63
    move/from16 v24, v15

    .line 64
    .line 65
    new-instance v15, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    move/from16 v25, v13

    .line 68
    .line 69
    const-string v13, "KeyguardFaceListenModel(timeMillis="

    .line 70
    .line 71
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", userId="

    .line 78
    .line 79
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ", listening="

    .line 86
    .line 87
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", alternateBouncerShowing="

    .line 94
    .line 95
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", authInterruptActive="

    .line 102
    .line 103
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    .line 107
    .line 108
    const-string v1, ", biometricSettingEnabledForUser="

    .line 109
    .line 110
    const-string v2, ", bouncerFullyShown="

    .line 111
    .line 112
    invoke-static {v15, v0, v1, v6, v2}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v0, ", faceAndFpNotAuthenticated="

    .line 116
    .line 117
    const-string v1, ", faceAuthAllowed="

    .line 118
    .line 119
    invoke-static {v15, v7, v0, v8, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v0, ", faceDisabled="

    .line 123
    .line 124
    const-string v1, ", faceLockedOut="

    .line 125
    .line 126
    invoke-static {v15, v9, v0, v10, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v0, ", goingToSleep="

    .line 130
    .line 131
    const-string v1, ", keyguardAwake="

    .line 132
    .line 133
    invoke-static {v15, v11, v0, v12, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v0, ", keyguardGoingAway="

    .line 137
    .line 138
    const-string v1, ", listeningForFaceAssistant="

    .line 139
    .line 140
    move/from16 v2, v25

    .line 141
    .line 142
    invoke-static {v15, v2, v0, v14, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v0, ", occludingAppRequestingFaceAuth="

    .line 146
    .line 147
    const-string v1, ", postureAllowsListening="

    .line 148
    .line 149
    move/from16 v2, v16

    .line 150
    .line 151
    move/from16 v3, v17

    .line 152
    .line 153
    invoke-static {v15, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v0, ", secureCameraLaunched="

    .line 157
    .line 158
    const-string v1, ", supportsDetect="

    .line 159
    .line 160
    move/from16 v2, v18

    .line 161
    .line 162
    move/from16 v3, v19

    .line 163
    .line 164
    invoke-static {v15, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v0, ", switchingUser="

    .line 168
    .line 169
    const-string v1, ", systemUser="

    .line 170
    .line 171
    move/from16 v2, v20

    .line 172
    .line 173
    move/from16 v3, v21

    .line 174
    .line 175
    invoke-static {v15, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v0, ", udfpsFingerDown="

    .line 179
    .line 180
    const-string v1, ", userNotTrustedOrDetectionIsNeeded="

    .line 181
    .line 182
    move/from16 v2, v22

    .line 183
    .line 184
    move/from16 v3, v23

    .line 185
    .line 186
    invoke-static {v15, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v0, ")"

    .line 190
    .line 191
    move/from16 v1, v24

    .line 192
    .line 193
    invoke-static {v15, v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    return-object v0
.end method
