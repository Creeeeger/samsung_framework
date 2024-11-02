.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$2;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 2
    .line 3
    check-cast p2, Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 4
    .line 5
    iget p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->priority:I

    .line 6
    .line 7
    iget p1, p2, Lcom/android/systemui/navigationbar/bandaid/Band;->priority:I

    .line 8
    .line 9
    if-lt p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, -0x1

    .line 14
    :goto_0
    return p0
.end method
