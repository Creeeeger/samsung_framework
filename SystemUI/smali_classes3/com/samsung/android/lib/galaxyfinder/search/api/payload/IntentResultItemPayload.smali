.class public final Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;


# instance fields
.field public final mIntent:Landroid/content/Intent;

.field public final mIntentAction:Ljava/lang/String;

.field public final mIntentClass:Ljava/lang/String;

.field public final mIntentDataUri:Ljava/lang/String;

.field public final mIntentFlags:I

.field public final mIntentPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntent:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentAction:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentPackage:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentClass:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentDataUri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentFlags:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentAction:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentPackage:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentClass:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentDataUri:Ljava/lang/String;

    .line 13
    iput p5, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentFlags:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getStringFromPayload()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "intent://"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntent:Landroid/content/Intent;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v2, Landroid/content/Intent;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentAction:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentPackage:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentClass:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentDataUri:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentFlags:I

    .line 61
    .line 62
    invoke-virtual {v2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method
