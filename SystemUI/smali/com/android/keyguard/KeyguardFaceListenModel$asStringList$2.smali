.class final Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardFaceListenModel;-><init>(JIZZZZZZZZZZZZZZZZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceListenModel;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardFaceListenModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/android/keyguard/KeyguardListenModelKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 6
    .line 7
    iget-wide v2, v2, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 8
    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 18
    .line 19
    iget-wide v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 26
    .line 27
    iget v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 34
    .line 35
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 42
    .line 43
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 50
    .line 51
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 58
    .line 59
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 66
    .line 67
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 74
    .line 75
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 82
    .line 83
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 90
    .line 91
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 98
    .line 99
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 106
    .line 107
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v15

    .line 113
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 114
    .line 115
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v16

    .line 121
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 122
    .line 123
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v17

    .line 129
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 130
    .line 131
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v18

    .line 137
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 138
    .line 139
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    .line 140
    .line 141
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v19

    .line 145
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 146
    .line 147
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    .line 148
    .line 149
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v20

    .line 153
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 154
    .line 155
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v21

    .line 161
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 162
    .line 163
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    .line 164
    .line 165
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v22

    .line 169
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 170
    .line 171
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v23

    .line 177
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 178
    .line 179
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v24

    .line 185
    iget-object v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 186
    .line 187
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v25

    .line 193
    iget-object v0, v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 194
    .line 195
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 196
    .line 197
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v26

    .line 201
    filled-new-array/range {v3 .. v26}, [Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0
.end method
