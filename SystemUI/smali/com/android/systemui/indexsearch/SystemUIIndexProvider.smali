.class public Lcom/android/systemui/indexsearch/SystemUIIndexProvider;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

.field public mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getSearchResult(Ljava/lang/String;ILandroid/os/CancellationSignal;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 2

    .line 1
    const-class p2, Lcom/android/systemui/util/DesktopManager;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/android/systemui/util/DesktopManager;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    check-cast p2, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    :cond_0
    const/4 p2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move p2, v0

    .line 29
    :goto_0
    if-eqz p2, :cond_2

    .line 30
    .line 31
    new-instance p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    new-instance p2, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    .line 52
    .line 53
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;I)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    .line 57
    .line 58
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    return-object p0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_1
    new-instance p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method

.method public final makeAppLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.systemui.indexsearch.OPEN_DETAIL"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-class v1, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final makeInAppSearchIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;I)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0
.end method
