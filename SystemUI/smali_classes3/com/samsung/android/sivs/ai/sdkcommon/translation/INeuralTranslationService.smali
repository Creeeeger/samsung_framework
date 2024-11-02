.class public interface abstract Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract dispose()V
.end method

.method public abstract getLanguageDirectionStateMap()Ljava/util/Map;
.end method

.method public abstract getResourcePackPackageName()Ljava/lang/String;
.end method

.method public abstract getSourceLanguageList()Ljava/util/List;
.end method

.method public abstract getTargetLanguageList()Ljava/util/List;
.end method

.method public abstract identifyLanguage(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract identifyLanguageAndGetCandidate()Ljava/util/List;
.end method

.method public abstract identifyLanguageWithList()Ljava/util/List;
.end method

.method public abstract isAvailableDirection()Z
.end method

.method public abstract refresh()V
.end method

.method public abstract translate()V
.end method
