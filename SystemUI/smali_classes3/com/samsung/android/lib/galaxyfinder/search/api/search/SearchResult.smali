.class public abstract Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final baseType:Ljava/lang/Class;

.field public final mItems:Ljava/util/List;

.field public final query:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->totalCount:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->mItems:Ljava/util/List;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->query:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->baseType:Ljava/lang/Class;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public abstract getItemColumns()[Ljava/lang/String;
.end method

.method public abstract getResultType()Ljava/lang/String;
.end method

.method public abstract getResultVersion()V
.end method

.method public abstract transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
.end method
