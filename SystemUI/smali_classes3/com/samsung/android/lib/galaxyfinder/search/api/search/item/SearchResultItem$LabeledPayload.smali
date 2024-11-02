.class public final Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final label:Ljava/lang/String;

.field public final payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;->label:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;->payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;-><init>(Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;)V

    return-void
.end method
