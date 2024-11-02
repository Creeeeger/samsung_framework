.class public abstract synthetic Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
