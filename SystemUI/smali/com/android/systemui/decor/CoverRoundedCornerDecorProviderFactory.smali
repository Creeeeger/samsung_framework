.class public final Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;
.super Lcom/android/systemui/decor/DecorProviderFactory;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final hasProviders:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProviderFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f05000e

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->hasProviders:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getHasProviders()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->hasProviders:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->hasProviders:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;

    .line 6
    .line 7
    const v0, 0x7f0a08ef

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 19
    .line 20
    :goto_0
    return-object p0
.end method
