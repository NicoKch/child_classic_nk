{if !empty($subcategories)}
    {if (isset($display_subcategories) && $display_subcategories eq 1) || !isset($display_subcategories) }
        <div id="subcategories" class="card card-block">
            <h2 class="subcategory-heading">{l s='Subcategories' d='Shop.Theme.Category'}</h2>

            <ul class="subcategories-list">
                {foreach from=$subcategories item=subcategory}
                    <li>
                        <div class="subcategory-image">
                            <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}"
                                title="{$subcategory.name|escape:'html':'UTF-8'}">
                                {if !empty($subcategory.image.large.url)}
                                    <img class="replace-2x" src="{$subcategory.image.large.url}"
                                        alt="{$subcategory.name|escape:'html':'UTF-8'}" loading="lazy" width="141" height="180" />
                                {/if}
                            </a>
                        </div>

                        <h5><a class="subcategory-name"
                                href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'}</a>
                        </h5>
                        {if $subcategory.description}
                            <div class="cat_desc">{$subcategory.description|unescape:'html' nofilter}</div>
                        {/if}
                    </li>
                {/foreach}
            </ul>
        </div>
    {/if}
{/if}