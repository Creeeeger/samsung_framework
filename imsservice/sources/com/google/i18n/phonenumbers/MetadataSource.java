package com.google.i18n.phonenumbers;

/* loaded from: classes.dex */
interface MetadataSource {
    Phonemetadata$PhoneMetadata getMetadataForNonGeographicalRegion(int i);

    Phonemetadata$PhoneMetadata getMetadataForRegion(String str);
}
