.class public final Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final authFlagsBasedPromptReason:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1;

.field public final authFlagsMessage:Lkotlinx/coroutines/flow/Flow;

.field public final biometricAuthMessage:Lkotlinx/coroutines/flow/Flow;

.field public final biometricLockedOutMessage:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final bouncerMessageFactory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;

.field public final customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isAnyBiometricsEnabledAndEnrolled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isFaceEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/TrustRepository;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepository;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->bouncerMessageFactory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 7
    .line 8
    check-cast p2, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthenticationEnabled()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    new-instance p5, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$and$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p5, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$and$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 21
    .line 22
    iget-object v2, p2, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceEnrolled:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 23
    .line 24
    invoke-direct {v1, p4, v2, p5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->isFaceEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 28
    .line 29
    new-instance p4, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$and$1;

    .line 30
    .line 31
    invoke-direct {p4, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$and$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 35
    .line 36
    iget-object v2, p2, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnabledByDevicePolicy:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 37
    .line 38
    iget-object v3, p2, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 39
    .line 40
    invoke-direct {p5, v2, v3, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 41
    .line 42
    .line 43
    iput-object p5, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 44
    .line 45
    new-instance p4, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$or$1;

    .line 46
    .line 47
    invoke-direct {p4, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryKt$or$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 51
    .line 52
    invoke-direct {v2, v1, p5, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->isAnyBiometricsEnabledAndEnrolled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 56
    .line 57
    check-cast p1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->isCurrentUserTrustManaged()Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object p4, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;->INSTANCE:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2;

    .line 64
    .line 65
    iget-object p2, p2, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->authenticationFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 66
    .line 67
    invoke-static {p2, p1, v2, p4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance p2, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->authFlagsBasedPromptReason:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1;

    .line 77
    .line 78
    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    .line 79
    .line 80
    new-instance p4, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;

    .line 81
    .line 82
    invoke-direct {p4, p3, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlin/coroutines/Continuation;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {p4}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->_primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 101
    .line 102
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 103
    .line 104
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 105
    .line 106
    .line 107
    move-result-object p4

    .line 108
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->_faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 109
    .line 110
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 111
    .line 112
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->_fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 117
    .line 118
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 119
    .line 120
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->_customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 125
    .line 126
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 127
    .line 128
    new-instance p4, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$2;

    .line 129
    .line 130
    invoke-direct {p4, p1, p0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;)V

    .line 131
    .line 132
    .line 133
    new-instance p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthMessage$2;

    .line 134
    .line 135
    invoke-direct {p1, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthMessage$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 136
    .line 137
    .line 138
    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 139
    .line 140
    invoke-direct {p5, p1, p4}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricAuthMessage:Lkotlinx/coroutines/flow/Flow;

    .line 148
    .line 149
    new-instance p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$3;

    .line 150
    .line 151
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;)V

    .line 152
    .line 153
    .line 154
    new-instance p2, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsMessage$2;

    .line 155
    .line 156
    invoke-direct {p2, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$authFlagsMessage$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 157
    .line 158
    .line 159
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 160
    .line 161
    invoke-direct {p4, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 162
    .line 163
    .line 164
    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->authFlagsMessage:Lkotlinx/coroutines/flow/Flow;

    .line 169
    .line 170
    new-instance p1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1;

    .line 171
    .line 172
    invoke-direct {p1, p3, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlin/coroutines/Continuation;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p6, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;

    .line 180
    .line 181
    iget-object p2, p6, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->isLockedOut:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 182
    .line 183
    new-instance p3, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;

    .line 184
    .line 185
    invoke-direct {p3, p0, v0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;-><init>(Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 186
    .line 187
    .line 188
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 189
    .line 190
    invoke-direct {p4, p2, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 191
    .line 192
    .line 193
    iput-object p4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricLockedOutMessage:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 194
    .line 195
    return-void
.end method
