.class public abstract Lcom/samsung/android/knox/cmfa/ICmfaService$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/cmfa/ICmfaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/cmfa/ICmfaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/cmfa/ICmfaService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_check:I = 0x7

.field public static final TRANSACTION_disable:I = 0x6

.field public static final TRANSACTION_enable:I = 0x5

.field public static final TRANSACTION_getFactorsToSetup:I = 0x3

.field public static final TRANSACTION_getValidActions:I = 0x4

.field public static final TRANSACTION_isEnabled:I = 0x1

.field public static final TRANSACTION_isStarted:I = 0x2

.field public static final TRANSACTION_notifyTestFactorScoreChange:I = 0xc

.field public static final TRANSACTION_registerListener:I = 0xa

.field public static final TRANSACTION_start:I = 0x8

.field public static final TRANSACTION_stop:I = 0x9

.field public static final TRANSACTION_unregisterListener:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.cmfa.ICmfaService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/ICmfaService;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.samsung.android.knox.cmfa.ICmfaService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/cmfa/ICmfaService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/cmfa/ICmfaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    const-string p0, "notifyTestFactorScoreChange"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "unregisterListener"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "registerListener"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "stop"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "start"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "check"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "disable"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "enable"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "getValidActions"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "getFactorsToSetup"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "isStarted"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "isEnabled"

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    .line 1
    const/16 p0, 0xb

    .line 2
    .line 3
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/ICmfaService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    const-string v0, "com.samsung.android.knox.cmfa.ICmfaService"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, p1, v2, v3, p4}, Lcom/samsung/android/knox/cmfa/ICmfaService;->notifyTestFactorScoreChange(Ljava/lang/String;JZ)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IEventListener;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->unregisterListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IEventListener;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    .line 87
    .line 88
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->registerListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IResultListener;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->stop(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IResultListener;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    .line 133
    .line 134
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->start(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IResultListener;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    .line 155
    .line 156
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->check(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :pswitch_6
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->disable()I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 183
    .line 184
    .line 185
    move-result p4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    .line 188
    .line 189
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/cmfa/ICmfaService;->enable(Ljava/lang/String;Z)I

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :pswitch_8
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->getValidActions()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :pswitch_9
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->getFactorsToSetup()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :pswitch_a
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isStarted()Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :pswitch_b
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isEnabled()Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 241
    .line 242
    .line 243
    :goto_0
    return v1

    .line 244
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return v1

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
