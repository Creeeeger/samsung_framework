.class public final synthetic Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Parcel;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
