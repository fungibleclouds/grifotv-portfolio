class FlickrView extends Backbone.View

    className : 'media-stream-item size1of3'
    template  : null

    initialize: ->

        if @model.get( 'is_portrait' )
            @template = _.template $( '#template_flickr_portrait' ).html()
        else
            @template = _.template $( '#template_flickr_landscape' ).html()

    render : =>

        $( @el ).append @template
            image : @model.get 'image'
            date  : @model.get 'date'
            url   : @model.get 'url'
        
        return @